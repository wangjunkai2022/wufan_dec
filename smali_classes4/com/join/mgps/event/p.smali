.class public Lcom/join/mgps/event/p;
.super Ljava/lang/Object;
.source "ScanLocalGameEvent.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/event/p;->a:I

    .line 3
    iput p1, p0, Lcom/join/mgps/event/p;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/p;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/p;->a:I

    return-void
.end method
