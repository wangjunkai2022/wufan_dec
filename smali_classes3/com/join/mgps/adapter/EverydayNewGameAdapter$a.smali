.class Lcom/join/mgps/adapter/EverydayNewGameAdapter$a;
.super Ljava/lang/Object;
.source "EverydayNewGameAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic b:Lcom/join/mgps/adapter/EverydayNewGameAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$a;->b:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$a;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$a;->a:Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method
