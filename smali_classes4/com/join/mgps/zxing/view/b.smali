.class public final Lcom/join/mgps/zxing/view/b;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/join/mgps/zxing/view/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/zxing/view/ViewfinderView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/zxing/view/b;->a:Lcom/join/mgps/zxing/view/ViewfinderView;

    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/view/b;->a:Lcom/join/mgps/zxing/view/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/join/mgps/zxing/view/ViewfinderView;->a(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
