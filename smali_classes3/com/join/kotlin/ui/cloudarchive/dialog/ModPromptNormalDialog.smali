.class public final Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "ModPromptNormalDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModPromptNormalDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModPromptNormalDialog.kt\ncom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J@\u0010\r\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\"\u0010\u0018\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\"\u0010\u001b\u001a\u00020\u000e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0010\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014R\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006)"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;",
        "Landroidx/appcompat/app/AlertDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "",
        "title",
        "desc",
        "button1",
        "button2",
        "Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;",
        "callback",
        "show",
        "Landroid/widget/TextView;",
        "vDesc",
        "Landroid/widget/TextView;",
        "getVDesc",
        "()Landroid/widget/TextView;",
        "setVDesc",
        "(Landroid/widget/TextView;)V",
        "vTitle",
        "getVTitle",
        "setVTitle",
        "vPositive",
        "getVPositive",
        "setVPositive",
        "vNegative",
        "getVNegative",
        "setVNegative",
        "Landroid/view/View;",
        "vClose",
        "Landroid/view/View;",
        "getVClose",
        "()Landroid/view/View;",
        "setVClose",
        "(Landroid/view/View;)V",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public vClose:Landroid/view/View;

.field public vDesc:Landroid/widget/TextView;

.field public vNegative:Landroid/widget/TextView;

.field public vPositive:Landroid/widget/TextView;

.field public vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f120180

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic show$default(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    move-object v1, p0

    move-object v6, p5

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V

    return-void
.end method


# virtual methods
.method public final getVClose()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vClose:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "vClose"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVDesc()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vDesc:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "vDesc"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVNegative()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vNegative:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "vNegative"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVPositive()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vPositive:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "vPositive"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getVTitle()Landroid/widget/TextView;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "vTitle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0185

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f091192

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tv_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vTitle:Landroid/widget/TextView;

    const v0, 0x7f0910ed

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tv_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vDesc:Landroid/widget/TextView;

    const v0, 0x7f091130

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tv_mod_opt_left)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vPositive:Landroid/widget/TextView;

    const v0, 0x7f091131

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.tv_mod_opt_right)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vNegative:Landroid/widget/TextView;

    const v0, 0x7f0907c6

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.ivClose)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vClose:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "vClose"

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog$onCreate$1;

    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog$onCreate$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setVClose(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vClose:Landroid/view/View;

    return-void
.end method

.method public final setVDesc(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vDesc:Landroid/widget/TextView;

    return-void
.end method

.method public final setVNegative(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vNegative:Landroid/widget/TextView;

    return-void
.end method

.method public final setVPositive(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vPositive:Landroid/widget/TextView;

    return-void
.end method

.method public final setVTitle(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vTitle:Landroid/widget/TextView;

    return-void
.end method

.method public final show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vDesc:Landroid/widget/TextView;

    const-string v1, "vDesc"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/16 v5, 0x8

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vPositive:Landroid/widget/TextView;

    const-string v4, "vPositive"

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_7

    const/16 v6, 0x8

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vNegative:Landroid/widget/TextView;

    const-string v6, "vNegative"

    if-nez v0, :cond_8

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    if-eqz p4, :cond_a

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    const/16 v3, 0x8

    :cond_b
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_d

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vTitle:Landroid/widget/TextView;

    if-nez v0, :cond_c

    const-string v2, "vTitle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz p2, :cond_f

    .line 6
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vDesc:Landroid/widget/TextView;

    if-nez p1, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    if-eqz p3, :cond_11

    .line 7
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vPositive:Landroid/widget/TextView;

    if-nez p1, :cond_10

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    if-eqz p4, :cond_13

    .line 8
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vNegative:Landroid/widget/TextView;

    if-nez p1, :cond_12

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_13
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vPositive:Landroid/widget/TextView;

    if-nez p1, :cond_14

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog$show$5;

    invoke-direct {p2, p5}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog$show$5;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;->vNegative:Landroid/widget/TextView;

    if-nez p1, :cond_15

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog$show$6;

    invoke-direct {p2, p5}, Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog$show$6;-><init>(Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
