.class final Lcom/yatoooon/screenadaptation/e$a;
.super Ljava/lang/Object;
.source "ScreenAdapterTools.java"

# interfaces
.implements Lcom/yatoooon/screenadaptation/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yatoooon/screenadaptation/e;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IIFLjava/lang/String;)Lcom/yatoooon/screenadaptation/a;
    .locals 7

    .line 1
    new-instance v6, Lcom/yatoooon/screenadaptation/d;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yatoooon/screenadaptation/d;-><init>(Landroid/content/Context;IIFLjava/lang/String;)V

    return-object v6
.end method
