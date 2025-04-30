.class Lcom/join/mgps/Util/i0$c;
.super Ljava/lang/Object;
.source "ForumUtil.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/i0;->P(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/i0$c;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ellipsized(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/Util/i0$c;->a:[I

    const/4 v0, 0x0

    aput p1, p2, v0

    return-void
.end method
