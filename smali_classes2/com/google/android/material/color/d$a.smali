.class Lcom/google/android/material/color/d$a;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/d$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/color/d$b;Lcom/google/android/material/color/d$b;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/color/d$b;->a(Lcom/google/android/material/color/d$b;)S

    move-result p1

    invoke-static {p2}, Lcom/google/android/material/color/d$b;->a(Lcom/google/android/material/color/d$b;)S

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/color/d$b;

    check-cast p2, Lcom/google/android/material/color/d$b;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/d$a;->a(Lcom/google/android/material/color/d$b;Lcom/google/android/material/color/d$b;)I

    move-result p1

    return p1
.end method
