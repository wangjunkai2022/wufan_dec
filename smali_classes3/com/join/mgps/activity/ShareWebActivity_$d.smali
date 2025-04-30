.class Lcom/join/mgps/activity/ShareWebActivity_$d;
.super Ljava/lang/Object;
.source "ShareWebActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity_;->i2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/ShareWebActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity_$d;->b:Lcom/join/mgps/activity/ShareWebActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity_$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity_$d;->b:Lcom/join/mgps/activity/ShareWebActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity_$d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity_;->I2(Lcom/join/mgps/activity/ShareWebActivity_;Ljava/lang/String;)V

    return-void
.end method
