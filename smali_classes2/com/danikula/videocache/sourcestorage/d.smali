.class public Lcom/danikula/videocache/sourcestorage/d;
.super Ljava/lang/Object;
.source "SourceInfoStorageFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/danikula/videocache/sourcestorage/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/sourcestorage/b;

    invoke-direct {v0}, Lcom/danikula/videocache/sourcestorage/b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/danikula/videocache/sourcestorage/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/sourcestorage/a;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/sourcestorage/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
