.class public Lcom/join/mgps/activity/ForumPostsCopyActivity;
.super Lcom/BaseAppCompatActivity;
.source "ForumPostsCopyActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0429
.end annotation

.annotation build Lorg/androidannotations/annotations/WindowFeature;
    value = {
        0xa
    }
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/CopyTextViewNew;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->b:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u957f\u6309\u81ea\u7531\u590d\u5236"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->a:Lcom/join/mgps/customview/CopyTextViewNew;

    iget-object v1, p0, Lcom/join/mgps/activity/ForumPostsCopyActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/CopyTextViewNew;->setTextForum(Ljava/lang/String;)V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
