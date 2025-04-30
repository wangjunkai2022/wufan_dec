.class Lcom/join/mgps/customview/m0$b;
.super Ljava/lang/Object;
.source "SlidingTabStrip2.java"

# interfaces
.implements Lcom/join/mgps/customview/SlidingTabLayout2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/m0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/m0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/m0$b;->a:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method varargs b([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/m0$b;->a:[I

    return-void
.end method
