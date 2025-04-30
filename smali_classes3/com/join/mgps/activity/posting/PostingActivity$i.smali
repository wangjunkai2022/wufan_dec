.class Lcom/join/mgps/activity/posting/PostingActivity$i;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->afterViews()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$i;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$i;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$i;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->z:Landroid/widget/TextView;

    const-string v0, "\u9009\u62e9\u5c0f\u7ec4"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$i;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->Y0(Z)V

    return-void
.end method
