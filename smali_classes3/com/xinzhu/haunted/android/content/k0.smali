.class public final Lcom/xinzhu/haunted/android/content/k0;
.super Ljava/lang/Object;
.source "MetaHtSyncInfo.java"


# static fields
.field public static b:Landroid/content/SyncInfo;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(ILandroid/accounts/Account;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "authorityId",
            "account",
            "authority",
            "startTime"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/SyncInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
