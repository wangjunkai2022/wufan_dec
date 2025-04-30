.class Lcom/join/mgps/adapter/m5$f;
.super Ljava/lang/Object;
.source "SearchListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m5;->K(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/adapter/m5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m5;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5$f;->b:Lcom/join/mgps/adapter/m5;

    iput-object p2, p0, Lcom/join/mgps/adapter/m5$f;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$f;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/m5$f;->b:Lcom/join/mgps/adapter/m5;

    invoke-static {p1}, Lcom/join/mgps/adapter/m5;->d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/m5$f;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/m5$g;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
