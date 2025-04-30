.class public final synthetic Lcom/papa91/arc/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/c;->a:Lcom/papa91/arc/EmuActivity_psp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/papa91/arc/c;->a:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->f(Lcom/papa91/arc/EmuActivity_psp;)V

    return-void
.end method
