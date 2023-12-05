//
//  NotasTests.swift
//  NotasTests
//
//  Created by matias on 05/12/2023.
//

import XCTest

final class NotasTests: XCTestCase {

    override func setUpWithError() throws {
        // Pon el código de configuración aquí. Este método se llama antes de la invocación de cada método de prueba en la clase.
    }

    override func tearDownWithError() throws {
        // Pon el código de desmontaje aquí. Este método se llama después de la invocación de cada método de prueba en la clase.
    }

    func testExample() throws {
        // Este es un ejemplo de un caso de prueba funcional.
        // Utilice XCTAssert y funciones relacionadas para verificar que sus pruebas produzcan los resultados correctos.
        // Cualquier prueba que escribas para XCTest se puede anotar como throws y async.
        // Marque sus lanzamientos de prueba para producir una falla inesperada cuando su prueba encuentre un error no detectado.
        // Marque su prueba como asíncrona para permitir la espera de que se complete el código asincrónico. Verifique los resultados con afirmaciones posteriores.
    }

    func testFailExample(){
        XCTFail()
    }

}
