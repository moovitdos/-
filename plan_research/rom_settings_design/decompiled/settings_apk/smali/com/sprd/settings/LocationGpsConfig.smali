.class public Lcom/sprd/settings/LocationGpsConfig;
.super Landroid/preference/PreferenceActivity;
.source "LocationGpsConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAgpsSetting:Landroid/preference/ListPreference;

.field private mCertPath:Landroid/preference/EditTextPreference;

.field private mSuplHost:Landroid/preference/EditTextPreference;

.field private mSuplPort:Landroid/preference/EditTextPreference;

.field private mSuplServer:Landroid/preference/ListPreference;

.field private manager:Landroid/location/LocationManager;

.field private mlocationMethod:Landroid/preference/ListPreference;

.field myHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 185
    new-instance v0, Lcom/sprd/settings/LocationGpsConfig$1;

    invoke-direct {v0, p0}, Lcom/sprd/settings/LocationGpsConfig$1;-><init>(Lcom/sprd/settings/LocationGpsConfig;)V

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/LocationGpsConfig;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationGpsConfig;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/LocationGpsConfig;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationGpsConfig;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/LocationGpsConfig;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationGpsConfig;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private getAttrVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v8, 0x0

    .line 314
    .local v8, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 315
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 316
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v5, "gpsconfig":Ljava/io/File;
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 319
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 320
    .local v7, "list":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 321
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 322
    .local v4, "element":Lorg/w3c/dom/Element;
    const-string v9, "NAME"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 323
    const-string v9, "VALUE"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 330
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "element":Lorg/w3c/dom/Element;
    .end local v5    # "gpsconfig":Ljava/io/File;
    .end local v6    # "i":I
    .end local v7    # "list":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return-object v8

    .line 320
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "element":Lorg/w3c/dom/Element;
    .restart local v5    # "gpsconfig":Ljava/io/File;
    .restart local v6    # "i":I
    .restart local v7    # "list":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "element":Lorg/w3c/dom/Element;
    .end local v5    # "gpsconfig":Ljava/io/File;
    .end local v6    # "i":I
    .end local v7    # "list":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "LocationGpsConfig"

    const-string v10, "Exception :"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "tmpConfig":Ljava/lang/String;
    const-string v1, "PROPERTY"

    invoke-direct {p0, p1, v1, p2}, Lcom/sprd/settings/LocationGpsConfig;->getAttrVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method private setAttrVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "newVal"    # Ljava/lang/String;

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 341
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 342
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v7, "gpsconfig":Ljava/io/File;
    invoke-virtual {v1, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 345
    .local v3, "doc":Lorg/w3c/dom/Document;
    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 346
    .local v9, "list":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v8, v13, :cond_0

    .line 347
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 348
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v13, "NAME"

    invoke-interface {v6, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 349
    const-string v13, "VALUE"

    move-object/from16 v0, p4

    invoke-interface {v6, v13, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v6    # "element":Lorg/w3c/dom/Element;
    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v12

    .line 355
    .local v12, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v11

    .line 356
    .local v11, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 357
    .local v4, "domSource":Ljavax/xml/transform/dom/DOMSource;
    const-string v13, "encoding"

    const-string v14, "utf-8"

    invoke-virtual {v11, v13, v14}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v13}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 359
    .local v10, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v11, v4, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    const/4 v13, 0x1

    .line 363
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "domSource":Ljavax/xml/transform/dom/DOMSource;
    .end local v7    # "gpsconfig":Ljava/io/File;
    .end local v8    # "i":I
    .end local v9    # "list":Lorg/w3c/dom/NodeList;
    .end local v10    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v11    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v12    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_1
    return v13

    .line 346
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    .restart local v7    # "gpsconfig":Ljava/io/File;
    .restart local v8    # "i":I
    .restart local v9    # "list":Lorg/w3c/dom/NodeList;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "gpsconfig":Ljava/io/File;
    .end local v8    # "i":I
    .end local v9    # "list":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v5

    .line 362
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "LocationGpsConfig"

    const-string v14, "Exception :"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v1, "PROPERTY"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sprd/settings/LocationGpsConfig;->setAttrVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 300
    .local v0, "setValues":Z
    if-nez v0, :cond_0

    .line 301
    const-string v1, "LocationGpsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 304
    .end local v0    # "setValues":Z
    :cond_0
    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 170
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, "bdlData":Landroid/os/Bundle;
    const-string v4, "supl_svr"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "suplSvr":Ljava/lang/String;
    const-string v4, "supl_port"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "suplPort":Ljava/lang/String;
    const-string v4, "LocationGpsConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suplSvr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " suplPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 177
    .local v1, "portVal":I
    iget-object v4, p0, Lcom/sprd/settings/LocationGpsConfig;->myHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v1, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 178
    const-string v4, "/data/cg/supl/supl.xml"

    const-string v5, "SERVER-ADDRESS"

    invoke-direct {p0, v4, v5, v3}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    const-string v4, "/data/cg/supl/supl.xml"

    const-string v5, "SERVER-PORT"

    invoke-direct {p0, v4, v5, v2}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    iget-object v4, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    const-string v5, "gps"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v3, v1}, Landroid/location/LocationManager;->setAgpsServer(Ljava/lang/String;ILjava/lang/String;I)V

    .line 183
    .end local v0    # "bdlData":Landroid/os/Bundle;
    .end local v1    # "portVal":I
    .end local v2    # "suplPort":Ljava/lang/String;
    .end local v3    # "suplSvr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 71
    const-string v0, "location_suplserver"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    .line 72
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const-string v0, "supl_host"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    .line 74
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 75
    const-string v0, "supl_port"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    .line 76
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 77
    const-string v0, "cert_path"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mCertPath:Landroid/preference/EditTextPreference;

    .line 78
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mCertPath:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    const-string v0, "location_method"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    .line 80
    iget-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    const-string v0, "agps_setting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    .line 82
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    .line 84
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0x1c6b

    const/4 v5, 0x1

    .line 206
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    move-object v1, p2

    .line 207
    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "strNewValue":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 289
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 220
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v2, "cert_path"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SUPL-CER"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, v2, v3, p2}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mCertPath:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v2, "location_suplserver"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 224
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    const-string v3, "MONTERNET"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-string v4, "supl.monternet.com"

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/location/LocationManager;->setAgpsServer(Ljava/lang/String;ILjava/lang/String;I)V

    .line 228
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SERVER-ADDRESS"

    const-string v4, "supl.monternet.com"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SERVER-PORT"

    const-string v4, "7275"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    const-string v3, "supl.monternet.com"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    const-string v3, "7275"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_3
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    const-string v3, "GOOGLE"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-string v4, "supl.google.com"

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/location/LocationManager;->setAgpsServer(Ljava/lang/String;ILjava/lang/String;I)V

    .line 236
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SERVER-ADDRESS"

    const-string v4, "supl.google.com"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SERVER-PORT"

    const-string v4, "7275"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    const-string v3, "supl.google.com"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    const-string v3, "7275"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 240
    :cond_4
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    const-string v3, "NOKIA"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-string v4, "supl.nokia.com"

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/location/LocationManager;->setAgpsServer(Ljava/lang/String;ILjava/lang/String;I)V

    .line 244
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SERVER-ADDRESS"

    const-string v4, "supl.nokia.com"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SERVER-PORT"

    const-string v4, "7275"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    const-string v3, "supl.nokia.com"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    const-string v3, "7275"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 249
    :cond_5
    const-string v2, "location_method"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 250
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SUPL-MODE"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, v2, v3, p2}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 251
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 252
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3, v5}, Landroid/location/LocationManager;->setPostionMode(Ljava/lang/String;I)V

    .line 260
    :cond_6
    :goto_1
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "SUPL-MODE"

    iget-object v4, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 255
    :cond_7
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->manager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/location/LocationManager;->setPostionMode(Ljava/lang/String;I)V

    goto :goto_1

    .line 262
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string v2, "agps_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 264
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "ENABLE"

    const-string v4, "TRUE"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 267
    :cond_9
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    const-string v2, "/data/cg/supl/supl.xml"

    const-string v3, "ENABLE"

    const-string v4, "FALSE"

    invoke-direct {p0, v2, v3, v4}, Lcom/sprd/settings/LocationGpsConfig;->setGpsConfigration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 158
    const-string v0, "supl_manual_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprd/settings/AGpsSuplSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "SERVER-ADDRESS"

    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 161
    const-string v1, "SERVER-PORT"

    iget-object v2, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    const/4 v2, 0x0

    .line 92
    .local v2, "tmp":Ljava/lang/String;
    const-string v3, "/data/cg/supl/supl.xml"

    const-string v6, "SERVER-ADDRESS"

    invoke-direct {p0, v3, v6}, Lcom/sprd/settings/LocationGpsConfig;->getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 94
    const/4 v0, -0x1

    .line 95
    .local v0, "index":I
    const-string v1, ""

    .line 96
    .local v1, "summary":Ljava/lang/String;
    const-string v3, "supl.monternet.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    const/4 v0, 0x0

    .line 98
    const-string v1, "MONTERNET"

    .line 106
    :cond_0
    :goto_0
    const-string v3, "LocationGpsConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setmSuplServerIndex is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-ltz v0, :cond_1

    .line 108
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 109
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplServer:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    .end local v0    # "index":I
    .end local v1    # "summary":Ljava/lang/String;
    :cond_1
    const-string v3, "/data/cg/supl/supl.xml"

    const-string v6, "SERVER-ADDRESS"

    invoke-direct {p0, v3, v6}, Lcom/sprd/settings/LocationGpsConfig;->getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplHost:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    const-string v3, "/data/cg/supl/supl.xml"

    const-string v6, "SERVER-PORT"

    invoke-direct {p0, v3, v6}, Lcom/sprd/settings/LocationGpsConfig;->getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mSuplPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    const-string v3, "/data/cg/supl/supl.xml"

    const-string v6, "SUPL-CER"

    invoke-direct {p0, v3, v6}, Lcom/sprd/settings/LocationGpsConfig;->getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mCertPath:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mCertPath:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    const-string v3, "/data/cg/supl/supl.xml"

    const-string v6, "ENABLE"

    invoke-direct {p0, v3, v6}, Lcom/sprd/settings/LocationGpsConfig;->getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    iget-object v6, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    const-string v3, "TRUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f090979

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 128
    iget-object v6, p0, Lcom/sprd/settings/LocationGpsConfig;->mAgpsSetting:Landroid/preference/ListPreference;

    const-string v3, "TRUE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 130
    const-string v3, "/data/cg/supl/supl.xml"

    const-string v6, "SUPL-MODE"

    invoke-direct {p0, v3, v6}, Lcom/sprd/settings/LocationGpsConfig;->getGpsConfigration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "assisted_gps_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 136
    :goto_3
    if-eqz v2, :cond_2

    .line 137
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    return-void

    .line 99
    .restart local v0    # "index":I
    .restart local v1    # "summary":Ljava/lang/String;
    :cond_3
    const-string v3, "supl.google.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    const/4 v0, 0x1

    .line 101
    const-string v1, "GOOGLE"

    goto/16 :goto_0

    .line 102
    :cond_4
    const-string v3, "supl.nokia.com"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const/4 v0, 0x2

    .line 104
    const-string v1, "NOKIA"

    goto/16 :goto_0

    .line 127
    .end local v0    # "index":I
    .end local v1    # "summary":Ljava/lang/String;
    :cond_5
    const v3, 0x7f09097a

    goto :goto_1

    :cond_6
    move v3, v5

    .line 128
    goto :goto_2

    .line 134
    :cond_7
    iget-object v3, p0, Lcom/sprd/settings/LocationGpsConfig;->mlocationMethod:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3
.end method
