.class Lcom/join/mgps/fragment/i2$a;
.super Ljava/lang/Object;
.source "FriendMsgRequestFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i2;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i2$a;->a:Lcom/join/mgps/fragment/i2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i2$a;->a:Lcom/join/mgps/fragment/i2;

    invoke-static {v0}, Lcom/join/mgps/fragment/i2;->c0(Lcom/join/mgps/fragment/i2;)V

    return-void
.end method
