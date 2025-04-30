.class Lcom/join/mgps/Util/i0$d;
.super Ljava/lang/Object;
.source "ForumUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/i0;->z1(Landroid/widget/TextView;ILandroid/text/SpannableStringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/text/SpannableStringBuilder;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/i0$d;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    iput p3, p0, Lcom/join/mgps/Util/i0$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/i0$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/i0$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/Util/i0$d;->c:I

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/i0$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/Util/i0$d;->c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v2, v3, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/i0$d;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/Util/i0$d;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/i0$d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/join/mgps/Util/i0;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
