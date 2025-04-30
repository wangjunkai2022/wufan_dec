.class public Lcom/airsaid/pickerviewlibrary/TimePickerView;
.super Lcom/airsaid/pickerviewlibrary/widget/a;
.source "TimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airsaid/pickerviewlibrary/TimePickerView$a;,
        Lcom/airsaid/pickerviewlibrary/TimePickerView$b;,
        Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;
    }
.end annotation


# instance fields
.field private n:Landroid/content/Context;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/airsaid/pickerviewlibrary/widget/c;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/airsaid/pickerviewlibrary/widget/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->n:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p()V

    .line 4
    invoke-direct {p0, p2}, Lcom/airsaid/pickerviewlibrary/TimePickerView;->o(Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V

    return-void
.end method

.method private o(Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V
    .locals 7

    .line 1
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->timepicker:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-direct {v1, v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;-><init>(Landroid/view/View;Lcom/airsaid/pickerviewlibrary/TimePickerView$Type;)V

    iput-object v1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x5

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xb

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v1, 0xc

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x64

    invoke-virtual {p0, v1, p1}, Lcom/airsaid/pickerviewlibrary/TimePickerView;->w(II)V

    .line 12
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual/range {v1 .. v6}, Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/airsaid/pickerviewlibrary/R$layout;->pickerview_time:I

    iget-object v2, p0, Lcom/airsaid/pickerviewlibrary/widget/a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->rlt_head_view:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->o:Landroid/view/View;

    .line 3
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Landroid/widget/Button;

    .line 5
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    invoke-virtual {p0, v0}, Lcom/airsaid/pickerviewlibrary/widget/a;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    .line 6
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->o(F)V

    return-void
.end method

.method public B(Ljava/util/Date;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :goto_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 p1, 0x2

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 p1, 0x5

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 p1, 0xb

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 p1, 0xc

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 9
    iget-object v1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual/range {v1 .. v6}, Lcom/airsaid/pickerviewlibrary/widget/c;->l(IIIII)V

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public E(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnSubmit:I

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    sget-object p1, Lcom/airsaid/pickerviewlibrary/widget/c;->k:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual {v0}, Lcom/airsaid/pickerviewlibrary/widget/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;

    invoke-interface {v0, p1}, Lcom/airsaid/pickerviewlibrary/TimePickerView$a;->a(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    goto :goto_1

    .line 8
    :cond_1
    sget v0, Lcom/airsaid/pickerviewlibrary/R$id;->btnCancel:I

    if-ne p1, v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/airsaid/pickerviewlibrary/widget/a;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public s(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->s:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->i(Z)V

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public v(Lcom/airsaid/pickerviewlibrary/TimePickerView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->t:Lcom/airsaid/pickerviewlibrary/TimePickerView$a;

    return-void
.end method

.method public w(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual {v0, p1}, Lcom/airsaid/pickerviewlibrary/widget/c;->m(I)V

    .line 2
    iget-object p1, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->q:Lcom/airsaid/pickerviewlibrary/widget/c;

    invoke-virtual {p1, p2}, Lcom/airsaid/pickerviewlibrary/widget/c;->j(I)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public z(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airsaid/pickerviewlibrary/TimePickerView;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    return-void
.end method
