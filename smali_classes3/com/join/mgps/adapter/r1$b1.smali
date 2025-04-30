.class public Lcom/join/mgps/adapter/r1$b1;
.super Ljava/lang/Object;
.source "GameDetialModleThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b1"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field final synthetic d:Lcom/join/mgps/adapter/r1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/r1;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$b1;->d:Lcom/join/mgps/adapter/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/r1$b1;->a:Ljava/lang/Object;

    .line 3
    iput p3, p0, Lcom/join/mgps/adapter/r1$b1;->b:I

    return-void
.end method
