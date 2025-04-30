.class Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;
.super Landroid/text/style/ClickableSpan;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/carbs/android/expandabletextview/library/ExpandableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;


# direct methods
.method private constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;Lcn/carbs/android/expandabletextview/library/ExpandableTextView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;-><init>(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->a:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    .line 2
    invoke-virtual {p1, p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->l(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object p1

    instance-of p1, p1, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {p1}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->e(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->f(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->i(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->a(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->g(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 6
    iget-boolean v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/carbs/android/expandabletextview/library/ExpandableTextView$e;->b:Lcn/carbs/android/expandabletextview/library/ExpandableTextView;

    invoke-static {v0}, Lcn/carbs/android/expandabletextview/library/ExpandableTextView;->h(Lcn/carbs/android/expandabletextview/library/ExpandableTextView;)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 7
    :goto_2
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
