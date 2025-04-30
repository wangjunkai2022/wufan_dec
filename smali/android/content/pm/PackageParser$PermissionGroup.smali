.class public final Landroid/content/pm/PackageParser$PermissionGroup;
.super Landroid/content/pm/PackageParser$Component;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/PackageParser$Component<",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public info:Landroid/content/pm/PermissionGroupInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/PackageParser$Component;-><init>()V

    return-void
.end method
