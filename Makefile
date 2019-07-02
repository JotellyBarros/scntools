CC = gcc

CP = cp -rf

MKDIR = mkdir -p

SRC_TREE = .

PREFIX = /opt/scntools

install:
	$(MKDIR) $(PREFIX)/bin
	$(MKDIR) $(PREFIX)/doc
	$(MKDIR) $(PREFIX)/lib
	$(CP) $(SRC_TREE)/bin/* $(PREFIX)/bin
	$(CP) $(SRC_TREE)/doc/* $(PREFIX)/doc
	$(CP) $(SRC_TREE)/lib/* $(PREFIX)/lib
	
clean:
	rm -rf ${SRC_TREE}/bin/*~ ${SRC_TREE}/bin/*.bak ${SRC_TREE}/bin/*.o
	rm -rf ${SRC_TREE}/doc/*~ ${SRC_TREE}/doc/*.bak ${SRC_TREE}/doc/*.o
	rm -rf ${SRC_TREE}/lib/*~ ${SRC_TREE}/lib/*.bak ${SRC_TREE}/lib/*.o

