import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:bottom_navbar/data/model/item.dart';

class RemoteDataSource {
  final dio = Dio(BaseOptions(
      baseUrl:
          'https://65accdc2adbd5aa31bdf9352.mockapi.io/ka/mobile-2'));

  Future<DataItem> getItems() async {
    final response = await dio.get('/items');
    log(response.data.toString());
    return DataItem.fromJson(response.data);
  }

  Future<Item> createItem(Item newItem) async {
    final response = await dio.post('/items', data: newItem.toJson());
    log(response.data.toString());
    return Item.fromModel(response.data);
  }

  Future<Item> updateItem(Item updatedItem) async {
    final response =
        await dio.put('/items/${updatedItem.id}', data: updatedItem.toJson());
    log(response.data.toString());
    return Item.fromModel(response.data);
  }

  Future<void> deleteItem(int itemId) async {
    await dio.delete('/items/$itemId');
  }
}
