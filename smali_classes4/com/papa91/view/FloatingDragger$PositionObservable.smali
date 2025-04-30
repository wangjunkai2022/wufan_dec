.class Lcom/papa91/view/FloatingDragger$PositionObservable;
.super Ljava/util/Observable;
.source "FloatingDragger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/FloatingDragger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionObservable"
.end annotation


# static fields
.field public static sInstance:Lcom/papa91/view/FloatingDragger$PositionObservable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/papa91/view/FloatingDragger$PositionObservable;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/view/FloatingDragger$PositionObservable;->sInstance:Lcom/papa91/view/FloatingDragger$PositionObservable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/view/FloatingDragger$PositionObservable;

    invoke-direct {v0}, Lcom/papa91/view/FloatingDragger$PositionObservable;-><init>()V

    sput-object v0, Lcom/papa91/view/FloatingDragger$PositionObservable;->sInstance:Lcom/papa91/view/FloatingDragger$PositionObservable;

    .line 3
    :cond_0
    sget-object v0, Lcom/papa91/view/FloatingDragger$PositionObservable;->sInstance:Lcom/papa91/view/FloatingDragger$PositionObservable;

    return-object v0
.end method


# virtual methods
.method public update()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 2
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method
