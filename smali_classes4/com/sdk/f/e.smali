.class public final enum Lcom/sdk/f/e;
.super Lcom/sdk/f/g$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/f/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sdk/f/g$a;-><init>(Ljava/lang/String;ILcom/sdk/f/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string v0, "cucc/host_cucc.properties"

    const-string v1, "PRODUCE_STATISTICAL"

    invoke-static {v0, v1}, Lcom/sdk/n/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
