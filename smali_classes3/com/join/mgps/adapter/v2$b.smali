.class Lcom/join/mgps/adapter/v2$b;
.super Ljava/lang/Object;
.source "ManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/v2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/v2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v2$b;->a:Lcom/join/mgps/adapter/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/v2$b;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {v0}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    return-void
.end method
