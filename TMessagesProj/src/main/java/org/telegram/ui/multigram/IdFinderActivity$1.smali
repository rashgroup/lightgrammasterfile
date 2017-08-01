.class Lorg/telegram/ui/lightgram/IdFinderActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "IdFinderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/lightgram/IdFinderActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/lightgram/IdFinderActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/lightgram/IdFinderActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/telegram/ui/lightgram/IdFinderActivity$1;->this$0:Lorg/telegram/ui/lightgram/IdFinderActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 55
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/lightgram/IdFinderActivity$1;->this$0:Lorg/telegram/ui/lightgram/IdFinderActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/lightgram/IdFinderActivity;->finishFragment()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/lightgram/IdFinderActivity$1;->this$0:Lorg/telegram/ui/lightgram/IdFinderActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/lightgram/IdFinderActivity;->openChatOrProfile()V

    goto :goto_0
.end method
