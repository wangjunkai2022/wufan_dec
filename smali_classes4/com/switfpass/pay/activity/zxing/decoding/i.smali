.class public final Lcom/switfpass/pay/activity/zxing/decoding/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final a:Lcom/switfpass/pay/activity/zxing/ViewfinderView;


# direct methods
.method public constructor <init>(Lcom/switfpass/pay/activity/zxing/ViewfinderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/i;->a:Lcom/switfpass/pay/activity/zxing/ViewfinderView;

    return-void
.end method


# virtual methods
.method public final foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/i;->a:Lcom/switfpass/pay/activity/zxing/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/switfpass/pay/activity/zxing/ViewfinderView;->a(Lcom/google/zxing/ResultPoint;)V

    return-void
.end method
