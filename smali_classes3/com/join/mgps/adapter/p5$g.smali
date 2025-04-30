.class public Lcom/join/mgps/adapter/p5$g;
.super Ljava/lang/Object;
.source "SimulatorAreaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/p5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/p5$g;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/join/mgps/adapter/p5$g;->b:I

    return-void
.end method
