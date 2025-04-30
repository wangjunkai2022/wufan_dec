.class public final synthetic Lcom/papa91/arc/dialog/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/dialog/RealNameDialog;

.field public final synthetic b:Lcom/papa91/arc/bean/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/l;->a:Lcom/papa91/arc/dialog/RealNameDialog;

    iput-object p2, p0, Lcom/papa91/arc/dialog/l;->b:Lcom/papa91/arc/bean/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/papa91/arc/dialog/l;->a:Lcom/papa91/arc/dialog/RealNameDialog;

    iget-object v1, p0, Lcom/papa91/arc/dialog/l;->b:Lcom/papa91/arc/bean/Response;

    invoke-static {v0, v1}, Lcom/papa91/arc/dialog/RealNameDialog;->c(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/bean/Response;)V

    return-void
.end method
