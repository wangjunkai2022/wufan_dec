.class Lcom/join/mgps/activity/posting/PostingActivity$d;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/CustomEdittext$a;


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
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$d;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$d;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->b1(I)I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "onSelectionChanged"

    aput-object v3, v1, v2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selEnd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$d;->a:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/posting/PostingActivity;->l:Lcom/join/mgps/customview/CustomEdittext;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
