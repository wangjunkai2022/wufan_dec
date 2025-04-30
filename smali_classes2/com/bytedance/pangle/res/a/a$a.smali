.class public final Lcom/bytedance/pangle/res/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/res/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:S

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method private constructor <init>(SIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-short p1, p0, Lcom/bytedance/pangle/res/a/a$a;->a:S

    .line 3
    iput p2, p0, Lcom/bytedance/pangle/res/a/a$a;->b:I

    .line 4
    iput p3, p0, Lcom/bytedance/pangle/res/a/a$a;->c:I

    .line 5
    iput p4, p0, Lcom/bytedance/pangle/res/a/a$a;->d:I

    add-int/2addr p4, p3

    .line 6
    iput p4, p0, Lcom/bytedance/pangle/res/a/a$a;->e:I

    return-void
.end method

.method public static a(Lcom/bytedance/pangle/res/a/g;Lcom/bytedance/pangle/res/a/e;)Lcom/bytedance/pangle/res/a/a$a;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/pangle/res/a/e;->a()I

    move-result v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readShort()S

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v1, Lcom/bytedance/pangle/res/a/a$a;

    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readShort()S

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/pangle/res/a/f;->readInt()I

    move-result p0

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/bytedance/pangle/res/a/a$a;-><init>(SIII)V

    return-object v1

    .line 4
    :catch_0
    new-instance p0, Lcom/bytedance/pangle/res/a/a$a;

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/bytedance/pangle/res/a/e;->a()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/bytedance/pangle/res/a/a$a;-><init>(SIII)V

    return-object p0
.end method
