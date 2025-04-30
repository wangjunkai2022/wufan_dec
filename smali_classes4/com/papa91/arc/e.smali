.class public final synthetic Lcom/papa91/arc/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/papa91/arc/EmuActivity_psp;

.field public final synthetic b:Lcom/papa91/arc/bean/Request;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/e;->a:Lcom/papa91/arc/EmuActivity_psp;

    iput-object p2, p0, Lcom/papa91/arc/e;->b:Lcom/papa91/arc/bean/Request;

    iput p3, p0, Lcom/papa91/arc/e;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/papa91/arc/e;->a:Lcom/papa91/arc/EmuActivity_psp;

    iget-object v1, p0, Lcom/papa91/arc/e;->b:Lcom/papa91/arc/bean/Request;

    iget v2, p0, Lcom/papa91/arc/e;->c:I

    invoke-static {v0, v1, v2}, Lcom/papa91/arc/EmuActivity_psp;->b(Lcom/papa91/arc/EmuActivity_psp;Lcom/papa91/arc/bean/Request;I)V

    return-void
.end method
