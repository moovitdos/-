.class public Lcom/android/settings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2089
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/settings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 2093
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2106
    :goto_0
    return-void

    .line 2095
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2096
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2098
    new-instance v1, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 2099
    .local v1, "fragment":Lcom/android/settings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2100
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2101
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2102
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2103
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2104
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 2105
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    .line 2110
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2111
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2112
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$4102(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2113
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$900(Lcom/android/settings/DataUsageSummary;)V

    .line 2114
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2118
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2119
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2120
    .local v0, "target":Lcom/android/settings/DataUsageSummary;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$4102(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2121
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$900(Lcom/android/settings/DataUsageSummary;)V

    .line 2122
    return-void
.end method
