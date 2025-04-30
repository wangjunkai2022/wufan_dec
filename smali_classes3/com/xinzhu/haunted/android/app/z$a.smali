.class public Lcom/xinzhu/haunted/android/app/z$a;
.super Ljava/lang/Object;
.source "MetaHtActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/haunted/android/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "creatorPackage",
            "creatorUid",
            "immutable",
            "intentSenderType"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
