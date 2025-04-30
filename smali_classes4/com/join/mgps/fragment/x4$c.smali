.class Lcom/join/mgps/fragment/x4$c;
.super Ljava/lang/Object;
.source "VoucherFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x4;->c0(Lcom/join/mgps/dto/PapayVoucherResultMain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PapayVoucherResultMain;

.field final synthetic b:Lcom/join/mgps/fragment/x4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x4;Lcom/join/mgps/dto/PapayVoucherResultMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x4$c;->b:Lcom/join/mgps/fragment/x4;

    iput-object p2, p0, Lcom/join/mgps/fragment/x4$c;->a:Lcom/join/mgps/dto/PapayVoucherResultMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x4$c;->b:Lcom/join/mgps/fragment/x4;

    iget-object v1, p0, Lcom/join/mgps/fragment/x4$c;->a:Lcom/join/mgps/dto/PapayVoucherResultMain;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/x4;->i0(Lcom/join/mgps/fragment/x4;Lcom/join/mgps/dto/PapayVoucherResultMain;)V

    return-void
.end method
