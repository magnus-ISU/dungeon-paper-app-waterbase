part of 'storage_handler.dart';

typedef DocData = Map<String, dynamic>;

class StorageHandler implements StorageDelegate {
  static StorageHandler? _instance;
  static StorageHandler get instance => _instance ??= StorageHandler();

  static final _firestore = FirestoreDelegate();
  static final _firestoreGlobal = FirestoreDelegate();
  static final _local = LocalStorageDelegate();

  String currentDelegate = 'local';

  Map<String, StorageDelegate Function()> get delegates => {
        'local': () => local,
        'firestore': () => firestore,
        'firestoreGlobal': () => firestoreGlobal,
      };

  FirestoreDelegate get firestore => _firestore;
  FirestoreDelegate get firestoreGlobal => _firestoreGlobal;
  LocalStorageDelegate get local => _local;

  StorageDelegate get delegate => delegates[currentDelegate]!.call();

  @override
  Future<DocData?> getDocument(String collection, String document) {
    debugPrint('Get document: $collection/$document');
    return delegate.getDocument(collection, document);
  }

  @override
  Future<void> create(String collection, String document, DocData value) {
    debugPrint('Create document: $collection/$document');
    return delegate.create(collection, document, value);
  }

  @override
  Future<List<DocData>> getCollection(String collection) {
    debugPrint('Get collection: $collection');
    return delegate.getCollection(collection);
  }

  @override
  String? _collectionPrefix;

  @override
  void setCollectionPrefix(String? prefix) => delegate.setCollectionPrefix(prefix);

  @override
  String? get collectionPrefix => delegate.collectionPrefix;

  @override
  Future<void> delete(String collection, String document) {
    debugPrint('Delete document: $collection/$document');
    return delegate.delete(collection, document);
  }

  @override
  Future<void> clear() => delegate.clear();

  @override
  Future<void> update(String collection, String document, DocData value) {
    debugPrint('Update document: $collection/$document');
    return delegate.update(collection, document, value);
  }

  @override
  StreamSubscription<List<DocData>> collectionListener(
    String collection,
    void Function(List<DocData> data)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    debugPrint('Listen to collection: $collection');
    return delegate.collectionListener(collection, onData,
        onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }

  @override
  StreamSubscription<DocData?> documentListener(
    String collection,
    String document,
    void Function(DocData? data)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    debugPrint('Listen to document: $collection/$document');
    return delegate.documentListener(collection, document, onData,
        onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }
}
