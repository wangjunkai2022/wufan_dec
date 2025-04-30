.class final Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MustPalyReginActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;",
        "invoke",
        "()Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$adapter$2;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$adapter$2;->this$0:Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity;->getVideoHelper()Lcom/join/android/app/component/video/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/modleregin/MustPalyReginActivity$adapter$2;->invoke()Lcom/join/kotlin/ui/modleregin/adapter/MustpalyAdapter;

    move-result-object v0

    return-object v0
.end method
