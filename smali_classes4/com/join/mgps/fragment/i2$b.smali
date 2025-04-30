.class Lcom/join/mgps/fragment/i2$b;
.super Ljava/lang/Object;
.source "FriendMsgRequestFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i2;->b0(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/i2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i2;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i2$b;->c:Lcom/join/mgps/fragment/i2;

    iput-object p2, p0, Lcom/join/mgps/fragment/i2$b;->a:Ljava/util/List;

    iput p3, p0, Lcom/join/mgps/fragment/i2$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i2$b;->c:Lcom/join/mgps/fragment/i2;

    iget-object v1, p0, Lcom/join/mgps/fragment/i2$b;->a:Ljava/util/List;

    iget v2, p0, Lcom/join/mgps/fragment/i2$b;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/i2;->d0(Lcom/join/mgps/fragment/i2;Ljava/util/List;I)V

    return-void
.end method
