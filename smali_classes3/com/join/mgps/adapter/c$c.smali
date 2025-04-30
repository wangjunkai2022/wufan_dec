.class Lcom/join/mgps/adapter/c$c;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/c;->w(Lcom/join/mgps/adapter/c$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/c$i0;

.field final synthetic b:Lcom/join/mgps/adapter/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/c;Lcom/join/mgps/adapter/c$i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$c;->b:Lcom/join/mgps/adapter/c;

    iput-object p2, p0, Lcom/join/mgps/adapter/c$c;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/c$c;->b:Lcom/join/mgps/adapter/c;

    invoke-static {v0}, Lcom/join/mgps/adapter/c;->a(Lcom/join/mgps/adapter/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/c$c;->a:Lcom/join/mgps/adapter/c$i0;

    invoke-virtual {v1}, Lcom/join/mgps/adapter/c$i0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
