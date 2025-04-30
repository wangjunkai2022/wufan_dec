.class public final Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;
.super Ljava/lang/Object;
.source "BaseDataBindingAdapter.kt"

# interfaces
.implements Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener<",
        "TM;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\'\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$OnItemClickListener;",
        "",
        "viewId",
        "item",
        "position",
        "",
        "onItemClick",
        "(ILjava/lang/Object;I)V",
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
.field final synthetic $func:Lkotlin/jvm/functions/Function3;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;->$func:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter$setOnItemClickListener$1;->$func:Lkotlin/jvm/functions/Function3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
