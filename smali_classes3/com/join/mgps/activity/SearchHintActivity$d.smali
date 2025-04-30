.class Lcom/join/mgps/activity/SearchHintActivity$d;
.super Ljava/lang/Object;
.source "SearchHintActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 p1, 0x0

    const/16 p3, 0x42

    if-ne p2, p3, :cond_1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-virtual {p2}, Lcom/join/mgps/activity/SearchHintActivity;->X0()V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, " "

    const-string v0, ""

    .line 3
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->clearFocus()V

    .line 5
    iget-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity;->l:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->clearFocus()V

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const-string v1, "setOnKeyListener"

    aput-object v1, p3, p1

    const/4 v1, 0x1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    invoke-static {p3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-virtual {p3, p2, v0}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$d;->a:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object p3, p2, Lcom/join/mgps/activity/SearchHintActivity;->z0:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/activity/SearchHintActivity;->W0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return p1
.end method
