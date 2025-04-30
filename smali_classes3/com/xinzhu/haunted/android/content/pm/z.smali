.class public final Lcom/xinzhu/haunted/android/content/pm/z;
.super Ljava/lang/Object;
.source "MetaHtSigningDetails.java"


# static fields
.field public static e:Ljava/lang/Object;


# instance fields
.field public a:[Landroid/content/pm/Signature;

.field public b:I

.field public c:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Landroid/content/pm/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Landroid/content/pm/Signature;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a0",
            "a1"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Landroid/content/pm/Signature;ILandroid/util/ArraySet;[Landroid/content/pm/Signature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a0",
            "a1",
            "a2",
            "a3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "I",
            "Landroid/util/ArraySet<",
            "*>;[",
            "Landroid/content/pm/Signature;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
