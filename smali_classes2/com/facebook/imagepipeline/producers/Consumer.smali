.class public interface abstract Lcom/facebook/imagepipeline/producers/Consumer;
.super Ljava/lang/Object;
.source "Consumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/Consumer$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract c(F)V
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method
