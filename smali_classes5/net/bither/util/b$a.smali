.class Lnet/bither/util/b$a;
.super Ljava/lang/Object;
.source "ImageCompressor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/b;->x(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lnet/bither/util/b;


# direct methods
.method constructor <init>(Lnet/bither/util/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/bither/util/b$a;->b:Lnet/bither/util/b;

    iput-object p2, p0, Lnet/bither/util/b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/bither/util/b$a;->b:Lnet/bither/util/b;

    iget-object v1, p0, Lnet/bither/util/b$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    return-void
.end method
