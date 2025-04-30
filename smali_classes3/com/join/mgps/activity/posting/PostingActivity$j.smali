.class Lcom/join/mgps/activity/posting/PostingActivity$j;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->x1(Lcom/join/mgps/dto/GroupListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$j;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$j;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->A:Landroid/widget/ImageView;

    const v1, 0x7f080a1d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
