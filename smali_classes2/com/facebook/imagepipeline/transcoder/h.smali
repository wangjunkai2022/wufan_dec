.class public Lcom/facebook/imagepipeline/transcoder/h;
.super Ljava/lang/Object;
.source "SimpleImageTranscoderFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/transcoder/d;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/imagepipeline/transcoder/h;->a:I

    return-void
.end method


# virtual methods
.method public createImageTranscoder(Lcom/facebook/imageformat/c;Z)Lcom/facebook/imagepipeline/transcoder/c;
    .locals 1

    .line 1
    new-instance p1, Lcom/facebook/imagepipeline/transcoder/g;

    iget v0, p0, Lcom/facebook/imagepipeline/transcoder/h;->a:I

    invoke-direct {p1, p2, v0}, Lcom/facebook/imagepipeline/transcoder/g;-><init>(ZI)V

    return-object p1
.end method
