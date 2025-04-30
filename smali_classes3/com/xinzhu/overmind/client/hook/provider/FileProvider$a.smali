.class interface abstract Lcom/xinzhu/overmind/client/hook/provider/FileProvider$a;
.super Ljava/lang/Object;
.source "FileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/provider/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation
.end method

.method public abstract getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation
.end method
