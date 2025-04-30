.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;
.super Ljava/lang/Object;
.source "CategoryDetailItemFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;",
        "",
        "",
        "type",
        "Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;",
        "data",
        "Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;",
        "newInstance",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(ILcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;)Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;
    .locals 4
    .param p2    # Lcom/join/kotlin/ui/findgame/data/CategroyIntentItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    invoke-direct {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;-><init>()V

    .line 2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    .line 3
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
