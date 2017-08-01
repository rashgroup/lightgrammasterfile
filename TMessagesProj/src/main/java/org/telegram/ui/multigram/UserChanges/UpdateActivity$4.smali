.class Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "j"    # J

    .prologue
    .line 206
    iget-object v1, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    # getter for: Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->dataBaseAccess:Lorg/telegram/ui/lightgram/UserChanges/a;
    invoke-static {v0}, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->access$000(Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;)Lorg/telegram/ui/lightgram/UserChanges/a;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    # getter for: Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->cursorAdapter:Lorg/telegram/ui/lightgram/UserChanges/UpdateCursorAdapter;
    invoke-static {v0}, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->access$400(Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;)Lorg/telegram/ui/lightgram/UserChanges/UpdateCursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/telegram/ui/lightgram/UserChanges/UpdateCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/lightgram/UserChanges/a;->a(Landroid/database/Cursor;)Lorg/telegram/ui/lightgram/UserChanges/UpdateModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/lightgram/UserChanges/UpdateModel;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    # setter for: Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v1, v0}, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->access$302(Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    # getter for: Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->selectedUser:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v0}, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->access$300(Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    check-cast p2, Lorg/telegram/ui/lightgram/UserChanges/UpdateCell;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lorg/telegram/ui/lightgram/UserChanges/UpdateCell;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->selectedUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity$4;->this$0:Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;

    # invokes: Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->openChatActivity()V
    invoke-static {v0}, Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;->access$500(Lorg/telegram/ui/lightgram/UserChanges/UpdateActivity;)V

    .line 212
    :cond_0
    return-void
.end method
