.class Lcom/join/mgps/activity/posting/PostingActivity$f;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$f;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x43

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$f;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget p2, p1, Lcom/join/mgps/activity/posting/PostingActivity;->a:I

    const/16 p3, 0x64

    if-ne p2, p3, :cond_0

    .line 2
    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->l:Lcom/join/mgps/customview/CustomEdittext;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/posting/PostingActivity$f;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/posting/PostingActivity;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
