.class final Lcom/join/android/app/common/utils/APKUtils$Companion$a;
.super Ljava/lang/Object;
.source "APKUtils.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/APKUtils$Companion;->L(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPKUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils$Companion$showVaExtUpdateDialog$1\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1617:1\n37#2,2:1618\n*E\n*S KotlinDebug\n*F\n+ 1 APKUtils.kt\ncom/join/android/app/common/utils/APKUtils$Companion$showVaExtUpdateDialog$1\n*L\n1485#1,2:1618\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "",
        "onClick",
        "(Landroid/view/View;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/t;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/join/mgps/db/tables/EMUApkTable;

.field final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/t;Landroid/widget/CheckBox;Lcom/join/mgps/db/tables/EMUApkTable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->a:Lcom/join/mgps/customview/t;

    iput-object p2, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->b:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    iput-object p4, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->a:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->b:Landroid/widget/CheckBox;

    const-string v0, "checkbox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/EMUApkTable;->getVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "emuApkTable.ver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_"

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/EMUApkTable;->setNotUpdateversion(I)V

    .line 6
    invoke-static {}, Ln1/p;->o()Ln1/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->c:Lcom/join/mgps/db/tables/EMUApkTable;

    invoke-virtual {p1, v0}, Lg1/b;->update(Ljava/lang/Object;)I

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/common/utils/APKUtils$Companion$a;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method
