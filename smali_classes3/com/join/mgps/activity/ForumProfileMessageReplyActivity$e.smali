.class Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;
.super Ljava/lang/Object;
.source "ForumProfileMessageReplyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->T1(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity$e;->a:Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;->O0(Lcom/join/mgps/activity/ForumProfileMessageReplyActivity;)Lcom/join/mgps/dialog/p0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
