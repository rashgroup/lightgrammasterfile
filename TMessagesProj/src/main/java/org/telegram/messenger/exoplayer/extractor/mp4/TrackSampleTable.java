/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *

 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.telegram.messenger.exoplayer.extractor.mp4;

import org.telegram.messenger.exoplayer.C;
import org.telegram.messenger.exoplayer.util.Assertions;
import org.telegram.messenger.exoplayer.util.Util;

/**
 * Sample table for a track in an MP4 file.
 */
/* package */ final class TrackSampleTable {

  /**
   * Sample index when no sample is available.
   */
  public static final int NO_SAMPLE = -1;

  /**
   * Number of samples.
   */
  public final int sampleCount;
  /**
   * Sample offsets in bytes.
   */
  public final long[] offsets;
  /**
   * Sample sizes in bytes.
   */
  public final int[] sizes;
  /**
   * Maximum sample size in {@link #sizes}.
   */
  public final int maximumSize;
  /**
   * Sample timestamps in microseconds.
   */
  public final long[] timestampsUs;
  /**
   * Sample flags.
   */
  public final int[] flags;

  TrackSampleTable(long[] offsets, int[] sizes, int maximumSize, long[] timestampsUs, int[] flags) {
    Assertions.checkArgument(sizes.length == timestampsUs.length);
    Assertions.checkArgument(offsets.length == timestampsUs.length);
    Assertions.checkArgument(flags.length == timestampsUs.length);

    this.offsets = offsets;
    this.sizes = sizes;
    this.maximumSize = maximumSize;
    this.timestampsUs = timestampsUs;
    this.flags = flags;
    sampleCount = offsets.length;
  }

  /**
   * Returns the sample index of the closest synchronization sample at or before the given
   * timestamp, if one is available.
   *
   * @param timeUs Timestamp adjacent to which to find a synchronization sample.
   * @return Index of the synchronization sample, or {@link #NO_SAMPLE} if none.
   */
  public int getIndexOfEarlierOrEqualSynchronizationSample(long timeUs) {
    // Video frame timestamps may not be sorted, so the behavior of this call can be undefined.
    // Frames are not reordered past synchronization samples so this works in practice.
    int startIndex = Util.binarySearchFloor(timestampsUs, timeUs, true, false);
    for (int i = startIndex; i >= 0; i--) {
      if ((flags[i] & C.SAMPLE_FLAG_SYNC) != 0) {
        return i;
      }
    }
    return NO_SAMPLE;
  }

  /**
   * Returns the sample index of the closest synchronization sample at or after the given timestamp,
   * if one is available.
   *
   * @param timeUs Timestamp adjacent to which to find a synchronization sample.
   * @return index Index of the synchronization sample, or {@link #NO_SAMPLE} if none.
   */
  public int getIndexOfLaterOrEqualSynchronizationSample(long timeUs) {
    int startIndex = Util.binarySearchCeil(timestampsUs, timeUs, true, false);
    for (int i = startIndex; i < timestampsUs.length; i++) {
      if ((flags[i] & C.SAMPLE_FLAG_SYNC) != 0) {
        return i;
      }
    }
    return NO_SAMPLE;
  }

}
