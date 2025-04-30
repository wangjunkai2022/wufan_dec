.class public final synthetic Lcom/papa91/arc/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/EmuActivity_psp;

.field public final synthetic b:Lcom/papa91/arc/bean/ButtonBean;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/d;->a:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/d;->b:Lcom/papa91/arc/bean/ButtonBean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/papa91/arc/d;->a:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p0, Lcom/papa91/arc/d;->b:Lcom/papa91/arc/bean/ButtonBean;

    invoke-static {v0, v1}, Lcom/papa91/arc/EmuActivity_psp;->a(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/ButtonBean;)V

    return-void
.end method
