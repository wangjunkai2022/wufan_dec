.class public Lcom/facebook/soloader/m;
.super Lcom/facebook/soloader/v;
.source "ExtractFromZipSoSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/m$b;,
        Lcom/facebook/soloader/m$c;
    }
.end annotation


# instance fields
.field protected final A:Ljava/lang/String;

.field protected final z:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/soloader/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/soloader/m;->z:Ljava/io/File;

    .line 3
    iput-object p4, p0, Lcom/facebook/soloader/m;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected o()Lcom/facebook/soloader/v$f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/soloader/m$c;

    invoke-direct {v0, p0, p0}, Lcom/facebook/soloader/m$c;-><init>(Lcom/facebook/soloader/m;Lcom/facebook/soloader/v;)V

    return-object v0
.end method
