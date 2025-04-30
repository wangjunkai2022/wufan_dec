.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/TimePickerView$e;,
        Lcom/google/android/material/timepicker/TimePickerView$g;,
        Lcom/google/android/material/timepicker/TimePickerView$f;
    }
.end annotation


# static fields
.field static final r0:Ljava/lang/String; = "android.view.View"


# instance fields
.field private final G:Lcom/google/android/material/chip/Chip;

.field private final H:Lcom/google/android/material/chip/Chip;

.field private final I:Lcom/google/android/material/timepicker/ClockHandView;

.field private final J:Lcom/google/android/material/timepicker/ClockFaceView;

.field private final K:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field private final n0:Landroid/view/View$OnClickListener;

.field private o0:Lcom/google/android/material/timepicker/TimePickerView$f;

.field private p0:Lcom/google/android/material/timepicker/TimePickerView$g;

.field private q0:Lcom/google/android/material/timepicker/TimePickerView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$a;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$a;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->n0:Landroid/view/View$OnClickListener;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$layout;->material_timepicker:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    sget p1, Lcom/google/android/material/R$id;->material_clock_face:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->J:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 7
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 8
    new-instance p2, Lcom/google/android/material/timepicker/TimePickerView$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/TimePickerView$b;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$d;)V

    .line 9
    sget p1, Lcom/google/android/material/R$id;->material_minute_tv:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    .line 10
    sget p1, Lcom/google/android/material/R$id;->material_hour_tv:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    .line 11
    sget p1, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/timepicker/ClockHandView;

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->H()V

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->G()V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/CheckBox;->setTag(ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->n0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->n0:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    const-string v1, "android.view.View"

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private H()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$c;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/TimePickerView$c;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 3
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$d;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/timepicker/TimePickerView$d;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private J(Lcom/google/android/material/chip/Chip;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 5
    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_display:I

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 6
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_2
    return-void
.end method

.method static synthetic u(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->p0:Lcom/google/android/material/timepicker/TimePickerView$g;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->o0:Lcom/google/android/material/timepicker/TimePickerView$f;

    return-object p0
.end method

.method static synthetic w(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->q0:Lcom/google/android/material/timepicker/TimePickerView$e;

    return-object p0
.end method


# virtual methods
.method public A(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public B(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public C(Lcom/google/android/material/timepicker/ClockHandView$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->o(Lcom/google/android/material/timepicker/ClockHandView$c;)V

    return-void
.end method

.method D(Lcom/google/android/material/timepicker/TimePickerView$e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/timepicker/TimePickerView$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->q0:Lcom/google/android/material/timepicker/TimePickerView$e;

    return-void
.end method

.method E(Lcom/google/android/material/timepicker/TimePickerView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->o0:Lcom/google/android/material/timepicker/TimePickerView$f;

    return-void
.end method

.method F(Lcom/google/android/material/timepicker/TimePickerView$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->p0:Lcom/google/android/material/timepicker/TimePickerView$g;

    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/timepicker/TimePickerView;->J(Lcom/google/android/material/chip/Chip;Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->J(Lcom/google/android/material/chip/Chip;Z)V

    return-void
.end method

.method public b(III)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "%02d"

    invoke-static {p1, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->G:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/google/android/material/timepicker/TimePickerView;->H:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public c([Ljava/lang/String;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->J:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->c([Ljava/lang/String;I)V

    return-void
.end method

.method public d(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->l(F)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->K()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->K()V

    :cond_0
    return-void
.end method

.method public x(Lcom/google/android/material/timepicker/ClockHandView$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->b(Lcom/google/android/material/timepicker/ClockHandView$d;)V

    return-void
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->j(Z)V

    return-void
.end method

.method public z(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->m(FZ)V

    return-void
.end method
