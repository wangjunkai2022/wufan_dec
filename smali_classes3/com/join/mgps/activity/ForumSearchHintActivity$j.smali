.class Lcom/join/mgps/activity/ForumSearchHintActivity$j;
.super Ljava/lang/Object;
.source "ForumSearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->H0(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->O0()V

    :cond_0
    return-void
.end method
