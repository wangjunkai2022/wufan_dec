.class public Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public apkfile:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isSystemApp:I

.field public lable:Ljava/lang/CharSequence;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public pkName:Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->isSystemApp:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->getApkItemInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->isSystemApp:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->getApkItemInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method


# virtual methods
.method public getApkItemInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    :try_start_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->lable:Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->isSystemApp:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->pkName:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionName:Ljava/lang/String;

    iget p1, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionCode:I

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->apkfile:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public getApkfile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->apkfile:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIsSystemApp()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->isSystemApp:I

    return v0
.end method

.method public getLable()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->lable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->pkName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkfile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->apkfile:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIsSystemApp(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->isSystemApp:I

    return-void
.end method

.method public setLable(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->lable:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public setPkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->pkName:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkItemInfo [icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->pkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->lable:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apkfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->apkfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/ApkItemInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
