.class public final Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;
.super Ljava/lang/Object;
.source "BtReginAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View;",
        "v",
        "",
        "onClick",
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
.field final synthetic $binding:Landroidx/databinding/ViewDataBinding;

.field final synthetic $data:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;->$binding:Landroidx/databinding/ViewDataBinding;

    iput-object p2, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;->$data:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;->$binding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/kotlin/ui/modleregin/adapter/BtReginAdapter$onBindItem$1;->$data:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
